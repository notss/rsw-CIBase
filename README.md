# rsw-CIBase

### Docker Resources

### php:7-apache 
w/xdebug-2.6.0, mysqli, and apache rewrite enabled
### mysql:5.7
db name = devdb
root pwd = root_pwd
user = devdb_user
user pwd = devdb_pwd

### Source Code Modifications

**\application\config\autoload.php**
Auto-load Packages and Auto-load Libraries
```
42: $autoload['packages'] = array(APPPATH.'third_party/ion_auth/');
61: $autoload['libraries'] = array('database', 'session');
```

**\application\config\config.php**
Base Site URL, Index File, and Session Variables
```
26: $config['base_url'] = 'http://localhost/';
38: $config['index_page'] = '';
380: $config['sess_driver'] = 'database';
383: $config['sess_save_path'] = 'ci_sessions';
```

**\application\config\database.php**
DATABASE CONNECTIVITY SETTINGS
```
78: 'hostname' => 'mysql',
79: 'username' => 'devdb_user',
80: 'password' => 'devdb_pwd',
81: 'database' => 'devdb',
```

### Database Setup Scripts
```
ion_auth.sql
ci_sessions.sql
```
