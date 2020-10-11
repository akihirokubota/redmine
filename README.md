# polls

Redmineのプラグインのチュートリアル
http://guide.redmine.jp/Plugin_Tutorial/
を修正したものになります。

## Plugin installation
Copy the plugin directory into the $REDMINE_ROOT/plugins directory.

e.g. git clone https://github.com/akihirokubota/redmine.git

## Do migration task.
e.g. rails redmine:plugins:migrate RAILS_ENV=production

(Re)Start Redmine.

## Uninstall
e.g. rails redmine:plugins:migrate NAME=polls VERSION=0 RAILS_ENV=production

