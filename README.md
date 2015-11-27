# Banner
PHP,MySQL

Скрпит banner.php который показывает, столько раз было показано изображения для пользователя.
Данный скрипт можно расширить на нужную Вам информацию.
Пример подключения можно посмотреть в index.html

MySQL таблица со следующими колонок:
- ip_address (айпи адресс)
- user_agent (браузей через который зашли)
- view_date (дата просмотра)
- page_url (с какой страницы просмотрели)
- views_count (кол. раз просмотров)

Установка: 
Замените в banner.php <pre>
	$db = mysql_connect("localhost","root","");
	mysql_select_db("test_boston",$db); 
</pre>
на свои данные и создайте в MySQL таблицу со след. структурой 
<pre>
CREATE TABLE IF NOT EXISTS `insegment` (
  `ip_address` text NOT NULL,
  `user_agent` text NOT NULL,
  `view_date` text NOT NULL,
  `page_url` text NOT NULL,
  `views_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

</pre>
