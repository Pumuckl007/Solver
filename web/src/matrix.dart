import "dart:math";

class Matrix{
  List<List<double>> matrix;
  List<double> matrixValues;
  int xSize = 0; // width
  int ySize = 0; // height
  bool undefined = false;
  Matrix(List<double> values, int x, int y){
    xSize = x;
    ySize = y;
    matrixValues = values;
    matrix = new List<List<double>>(x);
    for(int i = 0; i < x; i++){
      matrix[i] = new List<double>(y);
      for(int k = 0; k< y; k++){
        matrix[i][k] = values[3*i+k];
      }
    }
  }
  Matrix.matrixIsUndefined(bool undef){
    this.undefined = true;
  }
  List<double> getrow(int rownumber){
    if(!this.undefined){
      List<double> row = new List<double>(xSize);
      for(int i = 0; i < xSize; i++){
        row[i] = matrix[rownumber][i];
      }
      return row;
    }
    return null;
  }
  List<double> getcolumn(int columnnumber){
    if(!this.undefined){
      List<double> row = new List<double>(ySize);
      for(int i = 0; i < ySize; i++){
        print(i.toString() + " " + columnnumber.toString());
        row[i] = matrix[columnnumber][i];
      }
      return row;
    }
    return null;
  }
  Matrix multiply(Matrix m){
    if(xSize == m.ySize && !this.undefined && !m.undefined){
      List<double> valuestore = new List<double>(m.xSize*xSize);
      for(int k = 0; k<m.xSize; k++){
        for(int i = 0; i<this.xSize; i++){
          List<double> row = this.getrow(k);
          List<double> column = m.getcolumn(i);
          double value = 0.0;
          for(int z = 0; z<this.xSize; z++){
            value += row[z]*column[z];
          }
          valuestore[k*m.xSize+i] = value;
        }
      }
      return new Matrix(valuestore, m.xSize, xSize);
    }
    return new Matrix.matrixIsUndefined(true);
  }
  List<Matrix> LUdecomposition(){
    List<double> LMatrixValues = new List<double>(xSize*ySize);
    List<double> UMatrixValues = new List<double>(xSize*ySize);
    for(int k = 0; k<xSize; k++){
      for(int i = 0; i<ySize; i++){
        if(i-k >= 0){
          LMatrixValues[k + i*xSize] = matrixValues[k + i*xSize];
        } else {
          LMatrixValues[k + i*xSize] = 0.0;
        }
        if(i-k < 0){
          UMatrixValues[k + i*xSize] = matrixValues[k + i*xSize];
        } else {
          UMatrixValues[k + i*xSize] = 0.0;
        }
      }
    }
    List<Matrix> m = new List<Matrix>(2);
    m[0] = new Matrix(LMatrixValues, xSize, ySize);
    m[1] = new Matrix(UMatrixValues, xSize, ySize);
    return m;
  }
  //Rotates matrix right 90degres
  Matrix rotate(){
    List<double> values = new List<double>(xSize*ySize);
    for(int k = 0; k<xSize; k++){
        for(int i = 0; i<ySize; i++){
          values[i*ySize + k] = matrixValues[k*xSize+i];
        }
    }
    return new Matrix(values, ySize, xSize);
  }
  void invert(){
    
  }
  String toString(){
    String string = "";
    for(int r = 0; r<xSize; r++){
      for(int c = 0; c<ySize; c++){
        string = string + " " + matrix[r][c].toString();
      }
    }
    return string;
  }
}