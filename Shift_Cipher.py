while True:
        check =input("Şifrelenmiş metni kırmak için 1 e Şifrelemek için 2 ye basın")

        characters = "qwertyuıopğüasdfghjklşizxcvbnmöç !'^+%&/()=?_-*0987654321#${[]}\-|<>;,`.:"

        if check == "2":
                plain_text = input("Şifrenecek Metni Giriniz: ").lower()

                key = int(input("Anahtar Giriniz: "))

                cipher_text = ""

                for i in plain_text:
                        cipher_text += characters[(characters.index(i) + key)%len(characters)]

                print(cipher_text)

        elif check == "1":
                plain_text = input("Şifrelenmiş Metni Giriniz: ")

                key = int(input("Anahtar Giriniz: "))

                cipher_text = ""

                for i in plain_text:
                        cipher_text += characters[(characters.index(i) - key)%len(characters)]

                print(cipher_text)


