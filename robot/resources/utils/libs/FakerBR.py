from faker import Faker
import re

class FakerBR:
    def __init__(self):
        self.faker = Faker('pt_BR')

    def cpf(self):
        cpf = self.faker.cpf()
        return re.sub(r'\D', '', cpf)

    def cnpj(self):
        cnpj = self.faker.cnpj()
        return re.sub(r'\D', '', cnpj)

    def rg(self):
        rg = self.faker.rg()
        return re.sub(r'\D', '', rg)
    
    def name(self):
        return self.faker.name()
    
    def password(self):
        return Faker('en_US').password()
    
    