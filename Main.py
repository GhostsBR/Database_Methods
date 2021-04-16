import DatabaseController
from validate_docbr import CPF

db = DatabaseController.Users()
db.insert_user("Antonio Cesar", "10/05/2020", CPF().generate(True), 1.10)