-module(cryptoapis_list_transactions_by_block_hash_response_item_blockchain_specific_dash).

-export([encode/1]).

-export_type([cryptoapis_list_transactions_by_block_hash_response_item_blockchain_specific_dash/0]).

-type cryptoapis_list_transactions_by_block_hash_response_item_blockchain_specific_dash() ::
    #{ 'locktime' := integer(),
       'size' := integer(),
       'version' := integer(),
       'vin' := list(),
       'vout' := list()
     }.

encode(#{ 'locktime' := Locktime,
          'size' := Size,
          'version' := Version,
          'vin' := Vin,
          'vout' := Vout
        }) ->
    #{ 'locktime' => Locktime,
       'size' => Size,
       'version' => Version,
       'vin' => Vin,
       'vout' => Vout
     }.
