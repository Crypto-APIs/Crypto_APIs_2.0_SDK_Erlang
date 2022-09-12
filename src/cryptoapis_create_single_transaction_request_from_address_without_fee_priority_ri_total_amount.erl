-module(cryptoapis_create_single_transaction_request_from_address_without_fee_priority_ri_total_amount).

-export([encode/1]).

-export_type([cryptoapis_create_single_transaction_request_from_address_without_fee_priority_ri_total_amount/0]).

-type cryptoapis_create_single_transaction_request_from_address_without_fee_priority_ri_total_amount() ::
    #{ 'unit' => binary(),
       'value' => binary()
     }.

encode(#{ 'unit' := Unit,
          'value' := Value
        }) ->
    #{ 'unit' => Unit,
       'value' => Value
     }.
