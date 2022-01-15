from datetime import datetime

from django.test import TestCase
from .models import Item, Client, Orders, Cloth_type


class ItemsTestCase(TestCase):
    def setUp(self):
        self.item = Item.objects.create(
            name="Jordan 2001 MID",
            serial_number="S638D9900012",
            size=42,
            material="Mixed",
            price=59.99,
            manufacturer="Nike",
            color="Black",
            # cloth_type="Hoodie",
            # owner=1,
        )

    def test_item_creations(self):
        """Test item creations."""
        self.assertEqual(self.item.name, 'Jordan 2001 MID')
        self.assertEqual(self.item.serial_number, 'S638D9900012')
        self.assertEqual(self.item.size, 42)
        self.assertEqual(self.item.material, 'Mixed')
        self.assertEqual(self.item.price, 59.99)
        self.assertEqual(self.item.manufacturer, 'Nike')
        self.assertEqual(self.item.color, 'Black')
        # self.assertEqual(self.item.cloth_type, 'Hoodie')
        # self.assertEqual(self.item.owner, 1)

        self.assertTrue(self.item.name, 'Jordan 2001 MID')
        self.assertTrue(self.item.serial_number, 'S638D9900012S638D9900012')
        self.assertTrue(self.item.size, 42)
        self.assertTrue(self.item.material, 'Mixed')
        self.assertTrue(self.item.price, 59.99)
        self.assertTrue(self.item.manufacturer, 'Nike')
        self.assertTrue(self.item.color, 'Black')
        # self.assertTrue(self.item.cloth_type, 'Hoodie')
        # self.assertTrue(self.item.owner, 1)

        self.assertIsInstance(self.item.name, str)
        self.assertIsInstance(self.item.serial_number, str)
        self.assertIsInstance(self.item.size, int)
        self.assertIsInstance(self.item.material, str)
        self.assertIsInstance(self.item.price, float)
        self.assertIsInstance(self.item.manufacturer, str)
        self.assertIsInstance(self.item.color, str)
        # self.assertIsInstance(self.item.cloth_type, str)
        # self.assertIsInstance(self.item.owner, int)

    def test_str_representation1(self):
        """Checking the representation of the string."""
        self.assertEqual(self.item.__str__(), 'Jordan 2001 MID')

    def test_item_count(self):
        """Number of registered items."""
        item_count = Item.objects.all().count()
        self.assertEqual(item_count, 1)


class ClientTestCase(TestCase):
    def setUp(self):
        self.client = Client.objects.create(
            gender="Kobieta",
            name="Ewelina",
            surname="Fanka",
            adres="Warszawa ul. Stalowa 15/2",
            email="testmail@gmail.com",
            birth_date=datetime.date(2022, 1, 15),
        )

    def test_item_creations(self):
        """Test Client creations."""
        self.assertEqual(self.client.gender, 'Kobieta')
        self.assertEqual(self.client.name, 'Ewelina')
        self.assertEqual(self.client.surname, 'Fanka')
        self.assertEqual(self.client.adres, 'Warszawa ul. Stalowa 15/2')
        self.assertEqual(self.client.email, 'testmail@gmail.com')
        self.assertEqual(self.client.birth_date, datetime.date(2022, 1, 15))

        self.assertTrue(self.client.gender, 'Kobieta')
        self.assertTrue(self.client.name, 'Ewelina')
        self.assertTrue(self.client.surname, 'Fanka')
        self.assertTrue(self.client.adres, 'Warszawa ul. Stalowa 15/2')
        self.assertTrue(self.client.email, 'testmail@gmail.com')
        self.assertTrue(self.client.birth_date, datetime.date(2022, 1, 15))

        self.assertIsInstance(self.client.gender, str)
        self.assertIsInstance(self.client.name, str)
        self.assertIsInstance(self.client.surname, str)
        self.assertIsInstance(self.client.adres, str)
        self.assertIsInstance(self.client.email, str)
        self.assertIsInstance(self.client.birth_date, datetime.date)

    def test_str_representation1(self):
        """Checking the representation of the string."""
        self.assertEqual(self.client.__str__(), 'testmail@gmail.com')

    def test_item_count(self):
        """Number of registered items."""
        client_count = Client.objects.all().count()
        self.assertEqual(client_count, 1)

