-module(cryptoapis_get_block_details_by_block_hash_response_data).

-export([encode/1]).

-export_type([cryptoapis_get_block_details_by_block_hash_response_data/0]).

-type cryptoapis_get_block_details_by_block_hash_response_data() ::
    #{ 'item' := cryptoapis_get_block_details_by_block_hash_response_item:cryptoapis_get_block_details_by_block_hash_response_item()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
