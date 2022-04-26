-module(cryptoapis_estimate_transaction_smart_fee_r_data).

-export([encode/1]).

-export_type([cryptoapis_estimate_transaction_smart_fee_r_data/0]).

-type cryptoapis_estimate_transaction_smart_fee_r_data() ::
    #{ 'item' := cryptoapis_estimate_transaction_smart_fee_ri:cryptoapis_estimate_transaction_smart_fee_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
