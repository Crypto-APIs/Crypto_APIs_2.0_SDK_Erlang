-module(cryptoapis_get_xrp_ripple_address_details_response_item).

-export([encode/1]).

-export_type([cryptoapis_get_xrp_ripple_address_details_response_item/0]).

-type cryptoapis_get_xrp_ripple_address_details_response_item() ::
    #{ 'balance' := cryptoapis_get_xrp_ripple_address_details_response_item_balance:cryptoapis_get_xrp_ripple_address_details_response_item_balance(),
       'incomingTransactionsCount' := integer(),
       'outgoingTransactionsCount' := integer(),
       'sequence' := integer(),
       'transactionsCount' := integer()
     }.

encode(#{ 'balance' := Balance,
          'incomingTransactionsCount' := IncomingTransactionsCount,
          'outgoingTransactionsCount' := OutgoingTransactionsCount,
          'sequence' := Sequence,
          'transactionsCount' := TransactionsCount
        }) ->
    #{ 'balance' => Balance,
       'incomingTransactionsCount' => IncomingTransactionsCount,
       'outgoingTransactionsCount' => OutgoingTransactionsCount,
       'sequence' => Sequence,
       'transactionsCount' => TransactionsCount
     }.
