-module(cryptoapis_new_block_request_body_data).

-export([encode/1]).

-export_type([cryptoapis_new_block_request_body_data/0]).

-type cryptoapis_new_block_request_body_data() ::
    #{ 'item' := cryptoapis_new_block_request_body_data_item:cryptoapis_new_block_request_body_data_item()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
