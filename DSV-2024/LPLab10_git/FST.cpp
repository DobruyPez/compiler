#include "stdafx.h"
namespace FST {
RELATION::RELATION(unsigned char c, short nn)
{
	symbol = c;
	nnode = nn;
};

NODE::NODE()
{
	n_relation = 0;
	relations = nullptr;
};

NODE::NODE(short n, RELATION rel, ...)
{
	n_relation = n;
	RELATION *p = &rel;
	relations = new RELATION[n];

	for (size_t i = 0; i < n; i++)
	{
		/*std::cout << p[i].symbol << p[i].nnode << " ";*/
		relations[i] = p[i];
	}
	/*std::cout << std::endl;*/
}; 

FST::FST(unsigned char* s, short ns, NODE n, ...)
{
	string = s;
	nstates = ns;
	nodes = new NODE[ns];
	NODE *p = &n;
	for (int k = 0; k < ns; k++)
		nodes[k] = p[k];
	rstates = new short[nstates];
	memset(rstates, 0xff, sizeof(short)*nstates);
	rstates[0] = 0;
	position = -1;
};
bool step(FST& fst, short* &rstates)
{
	bool rc = false;
	std::swap(rstates, fst.rstates);
	for (short i = 0; i < fst.nstates; i++)
	{
		if (rstates[i] == fst.position)
			for (short j = 0; j < fst.nodes[i].n_relation; j++)
			{
				if (fst.nodes[i].relations[j].symbol == fst.string[fst.position])
				{
					fst.rstates[fst.nodes[i].relations[j].nnode] = fst.position + 1;
					rc = true;
				};
			};
	};
	return rc;
};

bool execute(FST& fst)
{
	short* rstates = new short[fst.nstates];
	memset(rstates, 0xff, sizeof(short)*fst.nstates);
	short lstring = _mbslen(fst.string);
	bool rc = true;
	int sumbolsNum = 0;
	for (short i = 0; i < lstring && rc; i++)
	{
		if (sumbolsNum == 14) {
			rc = false;
			break;
		}
		fst.position++;
		rc = step(fst, rstates);
		sumbolsNum++;
	};
	delete[] rstates;
	return (rc ? (fst.rstates[fst.nstates - 1] == lstring) : rc);
};





}




