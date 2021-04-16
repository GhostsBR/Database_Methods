import MySQLdb

class Database:
    conn = MySQLdb.connect(db="proway", host="localhost", user="root")
    cursor = conn.cursor()


class Users(Database):
    def insert_user(self, fullname, birth, cpf, height):
        try:
            self.cursor.execute(f"INSERT INTO users (fullname, birth, cpf, height) VALUES "
                                f"('{fullname}', '{birth}', '{cpf}', '{height}')")
            self.conn.commit()
            print("Usuário adiconado com sucesso ao banco de dados!")
        except:
            print("Não foi possivel inserir o usuário no banco de dados!")
        return True

    def update_user_by_id(self, id, fullname, birth, cpf, height):
        try:
            self.cursor.execute(f"UPDATE users SET fullname='{fullname}', birth='{birth}', cpf='{cpf}', height='{height}' "
                                f"WHERE id='{id}'")
            self.conn.commit()
        except:
            print("Não foi possível atualizar o usuário!")
        return True

    def update_user_by_cpf(self, fullname, birth, cpf, height):
        try:
            self.cursor.execute(f"UPDATE users SET fullname='{fullname}', birth='{birth}', cpf='{cpf}', height='{height}' "
                                f"WHERE cpf='{cpf}'")
            self.conn.commit()
        except:
            print("Não foi possível atualizar o usuário!")
        return True

    def update_all(self, fullname, birth, cpf, height):
        try:
            self.cursor.execute(f"UPDATE users SET fullname='{fullname}', birth='{birth}', cpf='{cpf}', height='{height}'")
            self.conn.commit()
        except:
            print("Não foi possível atualizar todos os usuários!")
            return False
        return True

    def get_users(self):
        try:
            self.cursor.execute("SELECT * FROM users")
            return self.cursor.fetchall()
        except:
            print("Não foi possível localizar os usuários!")
            return False

    def list_users(self):
        try:
            self.cursor.execute("SELECT * FROM users")
            result = self.cursor.fetchall()
        except:
            print("Não foi possível localizar os usuários!")
            return False
        print("NOME COMPLETO - DATA DE NASCIMENTO - CPF - ALTURA")
        for i in result:
            print(f"{i[1]} - {i[2]} - {i[3]} - {i[4]}")
        return True


    def get_user(self, field, value):
        try:
            self.cursor.execute(f"SELECT * FROM users WHERE {field}={value}")
            return self.cursor.fetchall()
        except:
            print("Não foi possível localizar o usuário!")
            return False

    def delete_user(self, field, value):
        try:
            self.cursor.execute(f"DELETE FROM users WHERE {field}={value}")
            self.conn.commit()
        except:
            print("Não foi possível apagar o usuário!")
            return False
        return True

    def delete_all(self):
        try:
            self.cursor.execute(f"DELETE FROM users")
            self.conn.commit()
        except:
            print("Não foi possível apagar todos os usuários!")
            return False
        return True
