-module(cryptoapis_create_single_transaction_request_from_address_without_fee_priority_rb).

-export([encode/1]).

-export_type([cryptoapis_create_single_transaction_request_from_address_without_fee_priority_rb/0]).

-type cryptoapis_create_single_transaction_request_from_address_without_fee_priority_rb() ::
    #{ 'context' => binary(),
       'data' := cryptoapis_create_single_transaction_request_from_address_without_fee_priority_rb_data:cryptoapis_create_single_transaction_request_from_address_without_fee_priority_rb_data()
     }.

encode(#{ 'context' := Context,
          'data' := Data
        }) ->
    #{ 'context' => Context,
       'data' => Data
     }.
