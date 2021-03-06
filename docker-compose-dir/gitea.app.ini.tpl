APP_NAME = Gitea: Git with a cup of tea
RUN_MODE = prod
RUN_USER = git 

[repository]
ROOT = /data/git/repositories            
                                         
[repository.upload]                      
TEMP_PATH = /data/gitea/uploads          
                                         
[server]                                 
APP_DATA_PATH    = /data/gitea          
SSH_DOMAIN       = gitea.docker.localhost
HTTP_PORT        = 3000                                
ROOT_URL         = http://gitea:3000/
DISABLE_SSH      = false
SSH_PORT         = 22      
DOMAIN           = gitea
LFS_START_SERVER = true
LFS_CONTENT_PATH = /data/gitea/lfs
LFS_JWT_SECRET   = vxA0cHnWjpm5kfnmayfPQJX5-PQSuEGH5IPN6Bmdw0M
OFFLINE_MODE     = false
 
[database]
PATH     = /data/gitea/gitea.db
DB_TYPE  = sqlite3
HOST     = localhost:3306
NAME     = gitea
USER     = root
PASSWD   =
SSL_MODE = disable
 
[session]
PROVIDER_CONFIG = /data/gitea/sessions
PROVIDER        = file
 
[picture]
AVATAR_UPLOAD_PATH      = /data/gitea/avatars
DISABLE_GRAVATAR        = false
ENABLE_FEDERATED_AVATAR = true
 
[attachment]
PATH = /data/gitea/attachments
 
[log]
ROOT_PATH = /data/gitea/log
MODE      = file
LEVEL     = Info
 
[security]
INSTALL_LOCK   = true
SECRET_KEY     = pXanPejKws
INTERNAL_TOKEN = eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYmYiOjE1MjU5NjUzODZ9.JdGTICoENaq1jUiTkEActt
                                         
[mailer]                                               
ENABLED = false                          
                                         
[service]                                
REGISTER_EMAIL_CONFIRM            = false
ENABLE_NOTIFY_MAIL                = false
DISABLE_REGISTRATION              = false              
ENABLE_CAPTCHA                    = false
REQUIRE_SIGNIN_VIEW               = false
DEFAULT_KEEP_EMAIL_PRIVATE        = false
DEFAULT_ALLOW_CREATE_ORGANIZATION = true
DEFAULT_ENABLE_TIMETRACKING       = true
NO_REPLY_ADDRESS                  = noreply.example.org
     
[openid]                   
ENABLE_OPENID_SIGNIN = true
ENABLE_OPENID_SIGNUP = true
