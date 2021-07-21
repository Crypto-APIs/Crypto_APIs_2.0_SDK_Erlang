-module(cryptoapis_get_xrp_ripple_address_details_ri).

-export([encode/1]).

-export_type([cryptoapis_get_xrp_ripple_address_details_ri/0]).

-type cryptoapis_get_xrp_ripple_address_details_ri() ::
    #{ 'balance' := cryptoapis_get_xrp_ripple_address_details_ri_balance:cryptoapis_get_xrp_ripple_address_details_ri_balance(),
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
