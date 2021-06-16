#include <iostream>
#include <string>
#include <math.h>
#include <iomanip>
#include <bitset>
#include <vector>
#include<fstream>
#include <QFile>
#include <QTextStream>
#include <QString>
using namespace std;

vector<long int> hexCode;

void binaryStringToHex(string str){
    long int longint = 0;
    for(int i=0;i<16;i++)
        longint+=( str[16-i-1]-48) * pow(2,i);
    cout<< setbase(16);
    hexCode.push_back(longint);
}
int counting(string str)        //counting "$" to decide between instructions types
{
    int count=0;
    for(int i=0;i<str.length();i++)
    {
        if (str[i]=='$')
            count++;
    }
    return count;
}

string toBinary(string x)
{
    int n=stoi(x);
    string r;
    while(n!=0)
    {
        r=(n%2==0 ?"0":"1")+r;
        n/=2;
    }
    return r;
}

string getOpCode(string instruction)
{
    if(instruction=="add")
        return "0000";
    else if(instruction=="sub")
        return "0001";
    else if(instruction=="and")
        return "0010";
    else if(instruction=="or")
        return "0011";
    else if(instruction=="nor")
        return "0100";
    else if(instruction=="xor")
        return "1110";
    else if(instruction=="lw")
        return "0101";
    else if(instruction=="sw")
        return "0110";
    else if(instruction=="beq")
        return "0111";
    else if(instruction=="addi")
        return "1001";
    else if(instruction=="andi")
        return "1010";
    else if(instruction=="ori")
        return "1011";
    else if(instruction=="sll")
        return "1100";
    else if(instruction=="srl")
        return "1101";
    else if(instruction=="j")
        return "1111";
}

string getRegisterCode(string reg)
{
    if(reg=="z0")
        return "0000";
    else if(reg=="t0")
        return "0001";
    else if(reg=="t1")
        return "0010";
    else if(reg=="t2")
        return "0011";
    else if(reg=="t3")
        return "0100";
    else if(reg=="s0")
        return "0101";
    else if(reg=="s1")
        return "0110";
    else if(reg=="s2")
        return "0111";
    else if(reg=="s3")
        return "1000";
    else if(reg=="s4")
        return "1001";
    else if(reg=="s5")
        return "1010";
    else if(reg=="sp")
        return "1011";
    else if(reg=="v0")
        return "1100";
    else if(reg=="ra")
        return "1101";
    else if(reg=="a0")
        return "1110";
    else if(reg=="a1")
        return "1111";
}

int main()
{
    ifstream indata;
        string instruction, str;
        indata.open("E:test.txt");
        //indata >> instruction;
        while ( !indata.eof() ) {
            indata >> instruction;
            indata >> str;
            string opcode, reg1, reg2, reg3, imm, res;
            int type = counting(str);
            switch (type)
            {
                case 3:     //R-type
                    opcode=getOpCode(instruction);
                    reg1=getRegisterCode(str.substr(1,2));
                    reg2=getRegisterCode(str.substr(5,2));
                    reg3=getRegisterCode(str.substr(9,2));
                    res.append(opcode);
                    res.append(reg3);
                    res.append(reg2);
                    res.append(reg1);
                    binaryStringToHex(res);
                    break;
                case 2:     //I-type
                    opcode=getOpCode(instruction);
                    reg1=getRegisterCode(str.substr(1,2));
                    reg2=getRegisterCode(str.substr(5,2));
                    imm = bitset<4>(toBinary(str.substr(8,str.length()))).to_string();
                    res.append(opcode);
                    res.append(reg2);
                    res.append(reg1);
                    res.append(imm);
                    binaryStringToHex(res);
                    break;
                case 0:     //J-type
                    opcode=getOpCode(instruction);
                    imm = bitset<12>(toBinary(str.substr(0,str.length()))).to_string();
                    res.append(opcode);
                    res.append(imm);
                    binaryStringToHex(res);
                    break;
            }
        }
        indata.close();
    ofstream ofs ("E:hexcode.txt",ofstream::out);
    for(int i=0; i<hexCode.size();++i)
    {
        ofs<<hexCode[i]<<" ";
    }
    ofs.close();

    return 0;
}
