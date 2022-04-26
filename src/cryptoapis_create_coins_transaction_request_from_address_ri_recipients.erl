-module(cryptoapis_create_coins_transaction_request_from_address_ri_recipients).

-export([encode/1]).

-export_type([cryptoapis_create_coins_transaction_request_from_address_ri_recipients/0]).

-type cryptoapis_create_coins_transaction_request_from_address_ri_recipients() ::
    #{ 'address' := binary(),
       'addressTag' => integer(),
       'amount' := binary(),
       'classicAddress' => binary()
     }.

encode(#{ 'address' := Address,
          'addressTag' := AddressTag,
          'amount' := Amount,
          'classicAddress' := ClassicAddress
        }) ->
    #{ 'address' => Address,
       'addressTag' => AddressTag,
       'amount' => Amount,
       'classicAddress' => ClassicAddress
     }.
