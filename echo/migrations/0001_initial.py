# -*- coding: utf-8 -*-
# Generated by Django 1.9.2 on 2016-02-24 06:18
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Node',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('node_name', models.CharField(max_length=255, verbose_name='\u8282\u70b9\u540d\u79f0')),
                ('node_type', models.CharField(choices=[('\u5c0f\u5fae\u652f\u884c', '\u5c0f\u5fae\u652f\u884c'), ('\u96f6\u552e\u578b\u652f\u884c', '\u96f6\u552e\u578b\u652f\u884c'), ('\u7efc\u5408\u578b\u652f\u884c', '\u7efc\u5408\u578b\u652f\u884c')], max_length=50, verbose_name='\u8282\u70b9\u7c7b\u578b')),
                ('node_address', models.CharField(max_length=255, verbose_name='\u8282\u70b9\u5730\u5740')),
                ('node_contact', models.CharField(blank=True, max_length=255, verbose_name='\u8282\u70b9\u8054\u7cfb\u4eba')),
                ('signer', models.CharField(default='system', max_length=50, verbose_name='\u767b\u8bb0\u4eba')),
                ('node_remarks', models.CharField(blank=True, max_length=255, verbose_name='\u5907\u6ce8')),
                ('node_signtime', models.DateField(auto_now_add=True)),
            ],
        ),
    ]
