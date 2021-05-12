-module(cryptoapis_list_transactions_by_address_response_item_blockchain_specific_litecoin).

-export([encode/1]).

-export_type([cryptoapis_list_transactions_by_address_response_item_blockchain_specific_litecoin/0]).

-type cryptoapis_list_transactions_by_address_response_item_blockchain_specific_litecoin() ::
    #{ 'locktime' := integer(),
       'size' := integer(),
       'vSize' := integer(),
       'version' := integer(),
       'vin' := list(),
       'vout' := list()
     }.

encode(#{ 'locktime' := Locktime,
          'size' := Size,
          'vSize' := VSize,
          'version' := Version,
          'vin' := Vin,
          'vout' := Vout
        }) ->
    #{ 'locktime' => Locktime,
       'size' => Size,
       'vSize' => VSize,
       'version' => Version,
       'vin' => Vin,
       'vout' => Vout
     }.
