FUNCTION divide(n1 IN NUMBER, n2 IN NUMBER)
RETURN BOOLEAN
IS
  result NUMBER;
BEGIN
  result := n1/n2;
  RETURN(FALSE);
EXCEPTION
  WHEN ZERO_DIVIDE THEN
    RETURN(true);
end divide;
