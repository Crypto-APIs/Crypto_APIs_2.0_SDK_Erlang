-module(cryptoapis_generate_address_ri).

-export([encode/1]).

-export_type([cryptoapis_generate_address_ri/0]).

-type cryptoapis_generate_address_ri() ::
    #{ 'addresses' := list(),
       'privateKey' := binary(),
       'publicKey' := binary(),
       'wif' := binary()
     }.

encode(#{ 'addresses' := Addresses,
          'privateKey' := PrivateKey,
          'publicKey' := PublicKey,
          'wif' := Wif
        }) ->
    #{ 'addresses' => Addresses,
       'privateKey' => PrivateKey,
       'publicKey' => PublicKey,
       'wif' => Wif
     }.
