# Talk to Llama frontend
## Może nie najtaniej ale jako tako
Based on https://github.com/dwyl/phoenix-liveview-chat-example


## TODO:
* zmienić mocka backendu na właściwą komunikację
* naprawić setup dockerowy (bez konteneryzacji działa)

## Uruchomienie
 * dev: `mix ecto.setup & mix phx.server` (wymaga instalacji Erlanga i Elixira oraz uruchomionej instancji postgresa na localhost)
 * prod: `docker compose up`
