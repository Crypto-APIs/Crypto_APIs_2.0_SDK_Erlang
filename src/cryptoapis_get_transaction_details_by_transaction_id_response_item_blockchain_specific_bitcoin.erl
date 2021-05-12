-module(cryptoapis_get_transaction_details_by_transaction_id_response_item_blockchain_specific_bitcoin).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_details_by_transaction_id_response_item_blockchain_specific_bitcoin/0]).

-type cryptoapis_get_transaction_details_by_transaction_id_response_item_blockchain_specific_bitcoin() ::
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
