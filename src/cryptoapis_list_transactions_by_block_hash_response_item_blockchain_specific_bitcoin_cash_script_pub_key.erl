-module(cryptoapis_list_transactions_by_block_hash_response_item_blockchain_specific_bitcoin_cash_script_pub_key).

-export([encode/1]).

-export_type([cryptoapis_list_transactions_by_block_hash_response_item_blockchain_specific_bitcoin_cash_script_pub_key/0]).

-type cryptoapis_list_transactions_by_block_hash_response_item_blockchain_specific_bitcoin_cash_script_pub_key() ::
    #{ 'addresses' := list(),
       'asm' := binary(),
       'hex' := binary(),
       'reqSigs' := integer(),
       'type' := binary()
     }.

encode(#{ 'addresses' := Addresses,
          'asm' := Asm,
          'hex' := Hex,
          'reqSigs' := ReqSigs,
          'type' := Type
        }) ->
    #{ 'addresses' => Addresses,
       'asm' => Asm,
       'hex' => Hex,
       'reqSigs' => ReqSigs,
       'type' => Type
     }.