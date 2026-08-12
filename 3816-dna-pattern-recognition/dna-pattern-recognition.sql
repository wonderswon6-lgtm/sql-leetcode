# Write your MySQL query statement below
select sample_id,
    dna_sequence,
    species,

case
when dna_sequence like "ATG%" then 1
else 0
end has_start,

case
when dna_sequence regexp "TAA$|TAG$|TGA$" then 1
else 0
end has_stop,

case
when dna_sequence like "%ATAT%" then 1
else 0
end has_atat,

case
when dna_sequence regexp "GGG+" then 1
else 0
end has_ggg 

from samples
order by sample_id



