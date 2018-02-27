public void setup()
{
  size(400, 400);
  background(200);
}
public void draw()
{
  noStroke();
  fill(0);
  sierpinski(0, 400, 400);
}

public void sierpinski(int x, int y, int len) 
{
  if (len <= 60)
  {
    triangle(x, y, x+len, y, x+len/2, y-len);
  }
  else
{
  sierpinski(x, y, len/2);
  sierpinski(x+len/2, y, len/2);
  sierpinski(x+len/4, y-len/2, len/2);
}
}
