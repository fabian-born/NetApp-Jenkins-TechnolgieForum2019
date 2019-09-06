docker run --name jenkinsci -p 8080:8080 jenkins/jenkins:latest

sudo docker run -it --publish 443:443 --publish 80:80 --publish 8022:22 --name gitlab --restart always --volume /opt/gitlabce/config:/etc/gitlab:Z --volume /opt/gitlabce/logs:/var/log/gitlab:Z --volume /opt/gitlabce/data:/var/opt/gitlab:Z gitlab/gitlab-ce
sudo docker exec -it gitlab vi /etc/gitlab/gitlab.rb
 external_url "http://tfrm-jenkins01.frademo.europe.netapp.com"


## Example gitlab.rb LDAP
gitlab_rails['ldap_enabled'] = true
gitlab_rails['ldap_servers'] = {
'main' => {
  'label' => 'Frademo AD',
  'host' =>  'frademo.europe.netapp.com',
  'port' => 636,
  'uid' => 'sAMAccountName',
  'encryption' => 'simple_tls',
  'verify_certificates' => true,
  'bind_dn' => 'CN=GitLabSRV,CN=Users,DC=frademo,DC=europe,DC=netapp,DC=com',
  'password' => 'Password1',
  'active_directory' => true,
  'base' => 'OU=Users,DC=frademo,DC=europe,DC=netapp,DC=com',
  'group_base' => 'CN=Users,DC=frademo,DC=europe,DC=netapp,DC=com'',
  'admin_group' => 'Global Admins'
  }
}