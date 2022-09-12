-module(cryptoapis_create_single_transaction_request_from_address_without_fee_priority_ri_recipient_inner).

-export([encode/1]).

-export_type([cryptoapis_create_single_transaction_request_from_address_without_fee_priority_ri_recipient_inner/0]).

-type cryptoapis_create_single_transaction_request_from_address_without_fee_priority_ri_recipient_inner() ::
    #{ 'address' := binary(),
       'amount' := binary(),
       'classicAddress' => binary(),
       'unit' := binary()
     }.

encode(#{ 'address' := Address,
          'amount' := Amount,
          'classicAddress' := ClassicAddress,
          'unit' := Unit
        }) ->
    #{ 'address' => Address,
       'amount' => Amount,
       'classicAddress' => ClassicAddress,
       'unit' => Unit
     }.
