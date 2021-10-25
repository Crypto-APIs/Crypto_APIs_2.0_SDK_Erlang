-module(cryptoapis_list_latest_mined_blocks_ribsbsc).

-export([encode/1]).

-export_type([cryptoapis_list_latest_mined_blocks_ribsbsc/0]).

-type cryptoapis_list_latest_mined_blocks_ribsbsc() ::
    #{ 'extraData' := binary(),
       'gasLimit' := binary(),
       'gasUsed' := binary(),
       'minedInSeconds' := integer(),
       'sha3Uncles' := binary(),
       'totalDifficulty' := binary(),
       'uncles' := list()
     }.

encode(#{ 'extraData' := ExtraData,
          'gasLimit' := GasLimit,
          'gasUsed' := GasUsed,
          'minedInSeconds' := MinedInSeconds,
          'sha3Uncles' := Sha3Uncles,
          'totalDifficulty' := TotalDifficulty,
          'uncles' := Uncles
        }) ->
    #{ 'extraData' => ExtraData,
       'gasLimit' => GasLimit,
       'gasUsed' => GasUsed,
       'minedInSeconds' => MinedInSeconds,
       'sha3Uncles' => Sha3Uncles,
       'totalDifficulty' => TotalDifficulty,
       'uncles' => Uncles
     }.
