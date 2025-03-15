.PHONY: upload

upload_ru:
	scp -rd ru 0x14-gp@1189.codelabs.ru:~/web/giorno

upload_fr:
	scp -rd fr 0x14-gp@1189.codelabs.ru:~/web/giorno

upload_en:
	scp -rd en 0x14-gp@1189.codelabs.ru:~/web/giorno


upload:
	scp -r * 0x14-gp@1189.codelabs.ru:~/web/giorno
