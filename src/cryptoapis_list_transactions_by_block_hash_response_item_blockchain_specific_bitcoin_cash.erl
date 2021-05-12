-module(cryptoapis_list_transactions_by_block_hash_response_item_blockchain_specific_bitcoin_cash).

-export([encode/1]).

-export_type([cryptoapis_list_transactions_by_block_hash_response_item_blockchain_specific_bitcoin_cash/0]).

-type cryptoapis_list_transactions_by_block_hash_response_item_blockchain_specific_bitcoin_cash() ::
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
