
# Ansible Modules

## Módulo `command` - Executa comando dentro dos hosts
O módulo `command` executa comandos diretamente nos hosts definidos.

Exemplo de uso:
```bash
ansible all -m command -a "timedatectl"
```
Esse comando executa o `timedatectl` em todos os hosts.

## Módulo `apt` - Instala pacotes
O módulo `apt` é utilizado para instalar pacotes em sistemas baseados no Debian (como o Ubuntu).

1. Atualizar o cache de pacotes:
```bash
ansible host01 -m apt -a "update_cache=yes" -b
```
O `-b` (ou `--become`) executa o comando com privilégios elevados.

2. Instalar ou atualizar um pacote para a versão mais recente:
```bash
ansible all -m apt -a "name=apache2 state=latest" -b
```
Esse comando instala ou atualiza o pacote `apache2` para a versão mais recente.

## Módulo `shell` - Executa comandos no shell
O módulo `shell` executa comandos de shell nos hosts.

Exemplo:
```bash
ansible host01 -m shell -a "systemctl status apache2"
```
Este comando verifica o status do serviço `apache2` no host `host01`.

## Módulo `service` - Gerencia serviços
O módulo `service` é utilizado para gerenciar serviços nos hosts.

Exemplo:
```bash
ansible host01 -m service -a "name=apache2 state=started" -b
```
Este comando inicia o serviço `apache2` no host `host01`.


## Módulo `copy` - Copia arquivos para o destino
O módulo `copy` é utilizado para transferir arquivos do controle para os hosts de destino.

Exemplo:
```bash
ansible all -m copy -a "src=dump dest=/tmp"
```
Esse comando copia o arquivo `dump` do controle para o diretório `/tmp` nos hosts definidos.

## Módulo `file` - Gerencia arquivos e diretórios
O módulo `file` permite gerenciar arquivos e diretórios no sistema de destino.

Exemplo:
```bash
ansible all -m file -a "path=/tmp/dump state=absent"
```
Esse comando remove o arquivo ou diretório `dump` localizado em `/tmp` nos hosts definidos.