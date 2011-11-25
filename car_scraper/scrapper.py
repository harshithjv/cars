from models import *
from BeautifulSoup import BeautifulSoup
import datetime
import urllib2
from django.db.utils import IntegrityError
from django.db import transaction

column_names = {
    'Date Listed' : 'date_listed',
    'Price' : 'price',
    'Address' : 'address',
    'For Sale By' : 'for_sale_by',
    'Make' : 'make',
    'Model' : 'model',
    'Trim' : 'trim',
    'Year' : 'year',
    'Kilometers' : 'kms',
    'Body Type' : 'bodytype',
    'Colour' : 'colour',
    'Drivetrain' : 'drivetrain',
    'Type' : 'type',
    'Fuel Type' : 'fuel_type',
    'Stock' : 'stock',
    'Transmission' : 'transmission',
}

@transaction.autocommit
def store_info(url):
    page = urllib2.urlopen(url)
    html = page.read()
    soup = BeautifulSoup(html)
    
    cars = soup.findAll('div', {'class': 'adInnerKj2'})
    for c in cars:
        title = c.find('span', {'class': 'ellipsis'}).find(text=True)
        price = float(c.find('div', {'style' : 'padding:15px 15px 0 15px;'}).find(text=True).replace('\n', '').replace('\t', '').replace('$', '').replace(',', ''))
        images = c.find('div', { 'class' :'imagStack clickable'})['img'].split(',')
        img_link1 = images[0]
        #img_link2 = images[1]
        #img_link3 = images[2]
        #img_link4 = images[3]
        
        link = c.find('a', { 'class' : 'viewAd'})['href']
        
        page = urllib2.urlopen(link)
        html = page.read()
        soup2 = BeautifulSoup(html)
        desc_div = soup2.findAll('div', {'id':'tab0'})

        description = str(desc_div[0].find('div', { 'style' : 'font-size: larger'})).replace('<div style="font-size: larger">', '').replace('</div>', '').strip()
        description = description + '\n\n'+ str(desc_div[0].find('p')).strip()

        table = str(soup2.findAll('table', {'id' : 'attributeTable'})[0])
        soup3 = BeautifulSoup(table)
        trs = soup3.findAll('tr')

        dict ={}

        for t in trs:
            tds =t.findAll('td')
            key = tds[0].find(text=True).strip()
            value = tds[1].find(text=True).strip()
            if key == 'Make' or key == 'Model':
                value = tds[1].find('a').find(text=True).strip()
            
            dict[key] = value



        date_listed = dict.get('Date Listed', '')
        address = dict.get('Address', '')
        make = dict.get('Make', '')
        model = dict.get('Model', '')
        trim = dict.get('Trim', '')
        year = int(dict.get('Year', 0))
        kms = int(dict.get('Kilometers', 0))
        bodytype = dict.get('Body Type', '')
        colour = dict.get('Colour', '')
        drivetrain = dict.get('Drivetrain', '')
        fuel_type = dict.get('Fuel Type', '')
        stock = dict.get('Stock', '')
        transmission = dict.get('Transmission', '')
        dealer = dict.get('Dealer', '')
        for_sale_by = dict.get('For Sale By', '')


        try:
            a_car = Car(title = title,
                        description = description,
                        #listed_date = date_listed,
                        address = address,
                        make = make,
                        model = model,
                        price = price,
                        trim = trim,
                        year = year,
                        kms = kms,
                        bodytype = bodytype,
                        colour = colour,
                        drivetrain = drivetrain,
                        fuel_type = fuel_type,
                        stock = stock,
                        transmission = transmission,
                        img_link1 = img_link1,
                        link = link,
                    )
            a_car.save()
        except IntegrityError:
            transaction.rollback()
            print title
            continue
        except Exception as e:
            print e
            pass