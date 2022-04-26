-module(cryptoapis_decode_raw_transaction_hex_ri).

-export([encode/1]).

-export_type([cryptoapis_decode_raw_transaction_hex_ri/0]).

-type cryptoapis_decode_raw_transaction_hex_ri() ::
    #{ 'blockchainSpeficicData' := cryptoapis_decode_raw_transaction_hex_ris:cryptoapis_decode_raw_transaction_hex_ris(),
       'size' := integer(),
       'transactionId' := binary()
     }.

encode(#{ 'blockchainSpeficicData' := BlockchainSpeficicData,
          'size' := Size,
          'transactionId' := TransactionId
        }) ->
    #{ 'blockchainSpeficicData' => BlockchainSpeficicData,
       'size' => Size,
       'transactionId' => TransactionId
     }.
