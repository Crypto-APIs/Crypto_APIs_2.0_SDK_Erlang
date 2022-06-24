-module(cryptoapis_list_unconfirmed_transactions_by_address_ribsd_vin_inner).

-export([encode/1]).

-export_type([cryptoapis_list_unconfirmed_transactions_by_address_ribsd_vin_inner/0]).

-type cryptoapis_list_unconfirmed_transactions_by_address_ribsd_vin_inner() ::
    #{ 'addresses' := list(),
       'scriptSig' := cryptoapis_list_confirmed_transactions_by_address_ribsd_vin_inner_script_sig:cryptoapis_list_confirmed_transactions_by_address_ribsd_vin_inner_script_sig(),
       'sequence' := integer(),
       'txid' => binary(),
       'txinwitness' := list(),
       'value' := binary(),
       'vout' => integer()
     }.

encode(#{ 'addresses' := Addresses,
          'scriptSig' := ScriptSig,
          'sequence' := Sequence,
          'txid' := Txid,
          'txinwitness' := Txinwitness,
          'value' := Value,
          'vout' := Vout
        }) ->
    #{ 'addresses' => Addresses,
       'scriptSig' => ScriptSig,
       'sequence' => Sequence,
       'txid' => Txid,
       'txinwitness' => Txinwitness,
       'value' => Value,
       'vout' => Vout
     }.
