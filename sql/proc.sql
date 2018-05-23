CREATE OR REPLACE FUNCTION execute_ansible(dbuser text, dbname text)
  RETURNS text
AS $$
  import subprocess
  playPath = "/etc/ansible/plays/provision_ansible.yml"
  process = subprocess.Popen("ansible-playbook "+playPath+ " --extra-vars \"dbname="+dbname+ " dbuser=" +dbuser+"\"", shell=True, stdout=subprocess.PIPE)
  process.wait()
  output = process.stdout.read()
  return output
$$ LANGUAGE plpythonu;
