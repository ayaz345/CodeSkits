with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Matrix_Calculator is

   type Matrix is array (Integer range <>, Integer range <>) of Integer;

   procedure Read_Matrix (M : in out Matrix) is
   begin
      for I in M'Range (1) loop
         for J in M'Range (2) loop
            Put ("Enter element (" & Integer'Image (I) & "," & Integer'Image (J) & "): ");
            Get (M (I, J));
         end loop;
      end loop;
   end Read_Matrix;

   procedure Print_Matrix (M : Matrix) is
   begin
      for I in M'Range (1) loop
         for J in M'Range (2) loop
            Put (Integer'Image (M (I, J)) & " ");
         end loop;
         New_Line;
      end loop;
   end Print_Matrix;

   procedure Add_Subtract_Matrix (M1, M2 : Matrix; Op : Character) is
      Result : Matrix (M1'Range (1), M1'Range (2));
   begin
      for I in M1'Range (1) loop
         for J in M1'Range (2) loop
            if Op = '+' then
               Result (I, J) := M1 (I, J) + M2 (I, J);
            else
               Result (I, J) := M1 (I, J) - M2 (I, J);
            end if;
         end loop;
      end loop;
      Print_Matrix (Result);
   end Add_Subtract_Matrix;

   M1 : Matrix (1..3, 1..3);
   M2 : Matrix (1..3, 1..3);

begin
   Put_Line ("Enter elements of first matrix:");
   Read_Matrix (M1);

   Put_Line ("Enter elements of second matrix:");
   Read_Matrix (M2);

   Put_Line ("Addition of matrices:");
   Add_Subtract_Matrix (M1, M2, '+');

   Put_Line ("Subtraction of matrices:");
   Add_Subtract_Matrix (M1, M2, '-');

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Matrix_Calculator is

   type Matrix is array (Integer range <>, Integer range <>) of Integer;

   procedure Read_Matrix (M : in out Matrix) is
   begin
      for I in M'Range (1) loop
         for J in M'Range (2) loop
            Put ("Enter element (" & Integer'Image (I) & "," & Integer'Image (J) & "): ");
            Get (M (I, J));
         end loop;
      end loop;
   end Read_Matrix;

   procedure Print_Matrix (M : Matrix) is
   begin
      for I in M'Range (1) loop
         for J in M'Range (2) loop
            Put (Integer'Image (M (I, J)) & " ");
         end loop;
         New_Line;
      end loop;
   end Print_Matrix;

   procedure Add_Subtract_Matrix (M1, M2 : Matrix; Op : Character) is
      Result : Matrix (M1'Range (1), M1'Range (2));
   begin
      for I in M1'Range (1) loop
         for J in M1'Range (2) loop
            if Op = '+' then
               Result (I, J) := M1 (I, J) + M2 (I, J);
            else
               Result (I, J) := M1 (I, J) - M2 (I, J);
            end if;
         end loop;
      end loop;
      Print_Matrix (Result);
   end Add_Subtract_Matrix;

   procedure Multiply_Matrix (M1, M2 : Matrix) is
      Result : Matrix (M1'Range (1), M2'Range (2));
   begin
      for I in M1'Range (1) loop
         for J in M2'Range (2) loop
            Result (I, J) := 0;
            for K in M1'Range (2) loop
               Result (I, J) := Result (I, J) + M1 (I, K) * M2 (K, J);
            end loop;
         end loop;
      end loop;
      Print_Matrix (Result);
   end Multiply_Matrix;

   procedure Transpose_Matrix (M : Matrix) is
      Result : Matrix (M'Range (2), M'Range (1));
   begin
      for I in M'Range (1) loop
         for J in M'Range (2) loop
            Result (J, I) := M (I, J);
         end loop;
      end loop;
      Print_Matrix (Result);
   end Transpose_Matrix;

   M1 : Matrix (1..3, 1..3);
   M2 : Matrix (1..3, 1..3);

begin
   Put_Line ("Enter elements of first matrix:");
   Read_Matrix (M1);

   Put_Line ("Enter elements of second matrix:");
   Read_Matrix (M2);

   Put_Line ("Addition of matrices:");
   Add_Subtract_Matrix (M1, M2, '+');

   Put_Line ("Subtraction of matrices:");
   Add_Subtract_Matrix (M1, M2, '-');

   Put_Line ("Multiplication of matrices:");
   Multiply_Matrix (M1, M2);

   Put_Line ("Transpose of first matrix:");
   Transpose_Matrix (M1);

   Put_Line ("Transpose of second matrix:");
   Transpose_Matrix (M2);
end Matrix_Calculator;
