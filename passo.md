username = test-snffehedz0dc@example.com
orgId = 00D1100000CdLs6

cci task run list_changes -> Listar as mudanças nas scratch orgs

cci task run retrieve_changes -> Trazer as mudanças da scratch org para o path

> Depois que os dados estiverem no local e commitados via git, podemos deletar a scratch org anterior

cci org scratch_delete dev

===
## Populating Sample Data

cci org default dev -> Isso define a organização padrão como a de dev

cci flow run dev_org -> Set up an org as a development environment for unmanaged metadata (Cria um scratch org para se trabalhar com pacotes desbloqueados) / Automaticamente já faz o deploy do conteúdo de force-app para dentro da org nova.

cci org browser -> Abre a org padrão no browser

cci task info generate_dataset_mapping | head -> Passa informações sobre a tarefa de gerar dataset_mapping

cci task run generate_dataset_mapping -> Cria um mapa com os registros que foram criados na organização, apenas o metadado

cci task run extract_dataset -> Extrai os dados do mapa que foi gerado do código anterior

cci org scratch_delete dev -> deleta a scratch org para criar uma novinha depois

===
## Customizing Flows

cci org default qa -> Coloca a qa como padrão para poder trabalhar com ela.

cci flow info qa_org -> Pega informações sobre o flow de criação da org de qa

Configurar o cumulusci para que o flow qa_org possa implementar a task de deploy records automaticamente.

cci flow run qa_org -> Executa a criação da organização de Qa

cci org browser -> Para poder entrar na org de qa.

cci task run robot -> Cria dados com dados aleatórios.

cci org cratch_delete qa -> Deleta a scratch org de qa
