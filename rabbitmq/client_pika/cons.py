#!/usr/bin/env python

import ssl
import pika
import time

CERT_PATH = '../certificate/cert.crt'

ssl_options = {
    'ssl_version': ssl.PROTOCOL_TLSv1_2,
    'ca_certs': CERT_PATH,
    'cert_reqs': ssl.CERT_REQUIRED
}
credentials = pika.PlainCredentials('guest2', 'guest2')

params = pika.ConnectionParameters('localhost', 5671, '/', credentials, heartbeat_interval=3, ssl=True, ssl_options=ssl_options)

con = pika.BlockingConnection(params)

channel = con.channel()

def callback(ch, method, properties, body):
    print(" [x] Received %r" % body)

channel.basic_consume(callback, queue='test', no_ack=True)

print(' [*] Waiting for messages. To exit press CTRL+C')
channel.start_consuming()

print 'Done'
