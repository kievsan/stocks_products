from rest_framework.test import APIClient
from unittest import TestCase


class TestAPIView(TestCase):
    def test_Hi(self):
        client = APIClient()
        response = client.get('/api/v1/')
        self.assertEqual(response.data, 'Hi, people!!!!')
        # self.assertEqual(True, False)  # add assertion here
