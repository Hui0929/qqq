# Generated by Django 2.1.7 on 2019-04-22 09:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0007_auto_20190412_1854'),
    ]

    operations = [
        migrations.CreateModel(
            name='SS',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=255)),
                ('price', models.CharField(max_length=255)),
                ('comment', models.CharField(blank=True, max_length=255, null=True)),
            ],
        ),
    ]
