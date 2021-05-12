-module(cryptoapis_list_transactions_by_address_response_item_blockchain_specific_dogecoin_vin).

-export([encode/1]).

-export_type([cryptoapis_list_transactions_by_address_response_item_blockchain_specific_dogecoin_vin/0]).

-type cryptoapis_list_transactions_by_address_response_item_blockchain_specific_dogecoin_vin() ::
    #{ 'addresses' := list(),
       'coinbase' := binary(),
       'scriptSig' := cryptoapis_list_transactions_by_address_response_item_blockchain_specific_dogecoin_script_sig:cryptoapis_list_transactions_by_address_response_item_blockchain_specific_dogecoin_script_sig(),
       'sequence' := binary(),
       'txid' => binary(),
       'txinwitness' := list(),
       'value' := binary(),
       'vout' => integer()
     }.

encode(#{ 'addresses' := Addresses,
          'coinbase' := Coinbase,
          'scriptSig' := ScriptSig,
          'sequence' := Sequence,
          'txid' := Txid,
          'txinwitness' := Txinwitness,
          'value' := Value,
          'vout' := Vout
        }) ->
    #{ 'addresses' => Addresses,
       'coinbase' => Coinbase,
       'scriptSig' => ScriptSig,
       'sequence' => Sequence,
       'txid' => Txid,
       'txinwitness' => Txinwitness,
       'value' => Value,
       'vout' => Vout
     }.
