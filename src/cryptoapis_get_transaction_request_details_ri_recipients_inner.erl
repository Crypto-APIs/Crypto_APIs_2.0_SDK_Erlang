-module(cryptoapis_get_transaction_request_details_ri_recipients_inner).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_request_details_ri_recipients_inner/0]).

-type cryptoapis_get_transaction_request_details_ri_recipients_inner() ::
    #{ 'address' := binary(),
       'addressTag' => integer(),
       'amount' := binary(),
       'classicAddress' => binary(),
       'unit' := binary()
     }.

encode(#{ 'address' := Address,
          'addressTag' := AddressTag,
          'amount' := Amount,
          'classicAddress' := ClassicAddress,
          'unit' := Unit
        }) ->
    #{ 'address' => Address,
       'addressTag' => AddressTag,
       'amount' => Amount,
       'classicAddress' => ClassicAddress,
       'unit' => Unit
     }.
