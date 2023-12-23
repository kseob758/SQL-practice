SELECT 
    ANIMAL_ID,
    NAME,
    case
        WHEN SEX_UPON_INTAKE like '%Neutered%' THEN 'O'
        WHEN SEX_UPON_INTAKE LIKE '%Spayed%' THEN 'O'
        ELSE 'X'
    END '중성화'
FROM ANIMAL_INS
ORDER BY ANIMAL_ID
