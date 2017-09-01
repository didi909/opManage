# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2017-09-01 09:27
from __future__ import unicode_literals

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Device',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('device_caption', models.CharField(max_length=100, verbose_name='\u8bbe\u5907\u540d\u79f0')),
                ('device_serial', models.CharField(max_length=100, verbose_name='\u8bbe\u5907\u5e8f\u5217\u53f7')),
                ('device_type', models.CharField(max_length=50, verbose_name='\u8bbe\u5907\u578b\u53f7')),
                ('device_vendor', models.CharField(choices=[('CISCO', 'CISCO'), ('JUNIPER', 'JUNIPER'), ('TOPSEC', 'TOPSEC'), ('HUAWEI', 'HUAWEI'), ('H3C', 'H3C')], max_length=50, verbose_name='\u8bbe\u5907\u5382\u5546')),
                ('device_remark', models.CharField(blank=True, max_length=50, verbose_name='\u5907\u6ce8')),
                ('device_ip', models.GenericIPAddressField(verbose_name='\u7ba1\u7406IP')),
                ('device_status', models.CharField(default='\u542f\u7528', max_length=10, verbose_name='\u8bbe\u5907\u72b6\u6001')),
                ('device_signer', models.CharField(default='system', max_length=30, verbose_name='\u767b\u8bb0\u4eba')),
                ('device_signtime', models.DateField(auto_now_add=True)),
            ],
        ),
        migrations.CreateModel(
            name='Employee',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('responsibility', models.CharField(blank=True, max_length=100)),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Line',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('line_code', models.CharField(max_length=100, verbose_name='\u7ebf\u8def\u7f16\u53f7')),
                ('line_local', models.CharField(default='\u4e0a\u6d77\u6570\u636e\u4e2d\u5fc3', max_length=50, verbose_name='\u6240\u5728\u673a\u623f')),
                ('line_speed', models.CharField(choices=[('2M', '2M'), ('4M', '4M'), ('6M', '6M'), ('10M', '10M'), ('\u5176\u4ed6', '\u5176\u4ed6')], default='6M', max_length=10, verbose_name='\u7ebf\u8def\u901f\u7387')),
                ('line_spname', models.CharField(choices=[('\u4e2d\u56fd\u7535\u4fe1', '\u4e2d\u56fd\u7535\u4fe1'), ('\u4e2d\u56fd\u8054\u901a', '\u4e2d\u56fd\u8054\u901a'), ('\u4e2d\u56fd\u79fb\u52a8', '\u4e2d\u56fd\u79fb\u52a8'), ('\u4e2d\u56fd\u94c1\u901a', '\u4e2d\u56fd\u94c1\u901a'), ('\u5176\u4ed6', '\u5176\u4ed6')], default='\u4fe1\u7f51\u516c\u53f8', max_length=10, verbose_name='\u8fd0\u8425\u5546')),
                ('line_type', models.CharField(choices=[('MSTP', 'MSTP'), ('MSAP', 'MASP'), ('SDH', 'SDH'), ('DIAL', 'DIAL'), ('\u5176\u4ed6', '\u5176\u4ed6')], default='MSTP', max_length=50, verbose_name='\u7ebf\u8def\u7c7b\u578b')),
                ('line_status', models.BooleanField(default=True, verbose_name='\u7ebf\u8def\u542f\u7528')),
                ('line_open', models.DateField(verbose_name='\u5f00\u901a\u65f6\u95f4')),
                ('line_closed', models.DateField(blank=True, null=True, verbose_name='\u5173\u95ed\u65f6\u95f4')),
                ('line_signer', models.CharField(default='system', max_length=30, verbose_name='\u767b\u8bb0\u4eba')),
                ('line_signtime', models.DateField(auto_now_add=True)),
                ('line_remarks', models.CharField(blank=True, max_length=255, verbose_name='\u5907\u6ce8')),
            ],
        ),
        migrations.CreateModel(
            name='Node',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('node_name', models.CharField(max_length=255, verbose_name='\u8282\u70b9\u540d\u79f0')),
                ('node_type', models.CharField(choices=[('\u603b\u90e8', '\u603b\u90e8'), ('\u5206\u90e8', '\u5206\u90e8')], max_length=50, verbose_name='\u8282\u70b9\u7c7b\u578b')),
                ('node_address', models.CharField(max_length=255, verbose_name='\u8282\u70b9\u5730\u5740')),
                ('node_contact', models.CharField(blank=True, max_length=255, verbose_name='\u8282\u70b9\u8054\u7cfb\u4eba')),
                ('node_signer', models.CharField(default='system', max_length=50, verbose_name='\u767b\u8bb0\u4eba')),
                ('node_remarks', models.CharField(blank=True, max_length=255, verbose_name='\u5907\u6ce8')),
                ('node_signtime', models.DateField(auto_now_add=True)),
            ],
        ),
        migrations.CreateModel(
            name='Process',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('process_content', models.TextField(blank=True)),
                ('process_signtime', models.DateTimeField(auto_now_add=True)),
                ('process_signer', models.CharField(default='system', max_length=30)),
            ],
        ),
        migrations.CreateModel(
            name='Task',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('task_code', models.CharField(default='error_code', max_length=30)),
                ('task_title', models.CharField(max_length=100, verbose_name='\u4efb\u52a1\u540d\u79f0')),
                ('task_category', models.CharField(choices=[('\u7efc\u5408\u4e8b\u52a1', '\u7efc\u5408\u4e8b\u52a1'), ('\u673a\u6784\u5efa\u8bbe', '\u673a\u6784\u5efa\u8bbe'), ('\u7ebf\u8def\u4e8b\u52a1', '\u7ebf\u8def\u4e8b\u52a1')], default='\u7efc\u5408\u4e8b\u52a1', max_length=100, verbose_name='\u4efb\u52a1\u5206\u7c7b')),
                ('task_contacts', models.TextField(blank=True, verbose_name='\u8054\u7cfb\u4eba')),
                ('task_status', models.CharField(default='\u5904\u7406\u4e2d', max_length=20, verbose_name='\u5904\u7406\u4e2d')),
                ('task_signer', models.CharField(default='system', max_length=30)),
                ('task_signtime', models.DateField(auto_now_add=True)),
                ('task_member', models.ManyToManyField(to='echo.Employee')),
            ],
        ),
        migrations.CreateModel(
            name='Upload',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('upload_title', models.CharField(max_length=255)),
                ('upload_path', models.CharField(max_length=255)),
                ('upload_signtime', models.DateTimeField(auto_now_add=True, null=True)),
                ('task', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='echo.Task')),
            ],
        ),
        migrations.AddField(
            model_name='process',
            name='task',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='echo.Task'),
        ),
        migrations.AddField(
            model_name='line',
            name='node',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='echo.Node'),
        ),
        migrations.AddField(
            model_name='device',
            name='node',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='echo.Node'),
        ),
    ]
