# N=3
Orb3_1=[0 2; 2 0]
Orb3_2=[0 1; 1 0]
Par3_1=[2 0; 2 2]
Par3_2=[2 0; 1 2]
Sta3_1=[1 2; 0 1]
Sta3_2=[1 1; 0 1]
gen3=[Orb3_1, Orb3_2, Par3_1, Par3_2, Sta3_1, Sta3_2]

# N=4
Orb4_1=[0 3; 3 0]
Orb4_3=[0 1; 1 0]
Par4_1=[3 0; 3 3]
Par4_3=[3 0; 1 3]
Sta4_1=[1 3; 0 1]
Sta4_3=[1 1; 0 1]
gen4=[Orb4_1, Orb4_3, Par4_1, Par4_3, Sta4_1, Sta4_3]
gen=[gen3,gen4]

N=3
Id=[1 0; 0 1]
TRSFs=[Id]
seq_Id=[0]
seqs=[seq_Id]

function compose(trsf,seq)
    for i in 1:6
        new_trsf=gen[N-2][i]*trsf
        new_trsf=new_trsf.%N
        new_seq=deepcopy(seq)
        push!(new_seq,i)
        for j in 1:length(TRSFs)
            if new_trsf==TRSFs[j]
                if length(new_seq)<length(seqs[j])
                    seqs[j]=new_seq
                end
                break
            end
            if j==length(TRSFs)
                push!(TRSFs,new_trsf)
                push!(seqs,new_seq)
                compose(new_trsf,new_seq)
            end
        end
    end
end

compose(Id,seq_Id)
display(TRSFs)
# display(seqs)
