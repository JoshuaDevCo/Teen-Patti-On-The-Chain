#!/bin/bash 

# echo ""
# near call game.teenpatti.testnet start_game --accountId harshrathi2511.testnet

echo ""
echo "registering players "
near call game.teenpatti.testnet add_players '{
    "input_players" : [
        {
            "account_id": "harshrathi2511.testnet",
            "name": "Harsh Rathi"
        },
        {
            "account_id": "samay200.testnet",
            "name": "Samay Gandhi"
        }
    ] 
}' --accountId teenpatti.testnet


echo ""
echo "view registered players .... "

near view game.teenpatti.testnet get_players_data

echo ""
near view game.teenpatti.testnet game_state
echo ""


echo ""
echo "getting a player by its account id working "
near call game.teenpatti.testnet get_player  '{
    "account_id" : "harshrathi2511.testnet"
}' --accountId teenpatti.testnet



echo ""
echo ""
echo " getting a player action"
near call game.teenpatti.testnet play '{"action": "Fold" , "account_id": "harshrathi2511.testnet"}' --accountId harshrathi2511.testnet

# better to parse the arguments through a json formatter for not getting fuckin syntax errors