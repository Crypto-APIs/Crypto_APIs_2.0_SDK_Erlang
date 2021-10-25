-module(cryptoapis_list_confirmed_transactions_by_address_ribsz_v_shielded_output).

-export([encode/1]).

-export_type([cryptoapis_list_confirmed_transactions_by_address_ribsz_v_shielded_output/0]).

-type cryptoapis_list_confirmed_transactions_by_address_ribsz_v_shielded_output() ::
    #{ 'cmu' := binary(),
       'cv' := binary(),
       'encCipherText' := binary(),
       'ephemeralKey' := binary(),
       'outCipherText' := binary(),
       'proof' := binary()
     }.

encode(#{ 'cmu' := Cmu,
          'cv' := Cv,
          'encCipherText' := EncCipherText,
          'ephemeralKey' := EphemeralKey,
          'outCipherText' := OutCipherText,
          'proof' := Proof
        }) ->
    #{ 'cmu' => Cmu,
       'cv' => Cv,
       'encCipherText' => EncCipherText,
       'ephemeralKey' => EphemeralKey,
       'outCipherText' => OutCipherText,
       'proof' => Proof
     }.
