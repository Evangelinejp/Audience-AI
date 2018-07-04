# conv_continu.m
#
# Affichage des notes musicales contenues dans un signal .wav
#
# Programme inspiré du programme "wavff.m" de M.Gary Scavone
# de McGill University, 2004.
#
# Réalisé par Jesse Bilton
# École de technologie supérieure, 2013.


# Acquisition des paramètres du fichier .wav à lire dans le
# directoire Matlab.
#fichier = 'guit6_7c_AcDo_8192.wav';
#[y, fs, nbits] = wavread(fichier);

# Affichage du nom du fichier .wav.
#disp(['Lecture du fichier ', fichier]);

# Saisie de la longueur du signal L pour le calcul de FFT.
L = 16384;
# 10= 2 sec @ 16385, 1 sec @ 8192
compteur = 30;
fs=96000;



tic
   while compteur>0
   compteur = compteur-1;
   
   ai=analoginput('winsound');   
   #addchannel(ai,1:2);
   addchannel(ai,1);
   ai.samplerate=96000;
   ai.samplespertrigger=16384;
   ai.triggertype='immediat';
   start(ai);      
   #[d,t]=getdata(ai);
   #u1=d(:,1);
   #y=fft(u1,8192);
   #p=y.*conj(y);
   #c=abs(p.^(1/2));
   #f = 0:20:5000;
   #ff=f(40:200)/1.05;
   #cc=c(40:200);
   #plot(ff,cc)
   #delete(ai)   
#clear ai
 #  end
  
[y]=getdata(ai);


# Calcul de la transformée rapide de Fourier (FFT) selon le code
# fourni dans l'aide de MATLAB
#tic                     # Début de la mesure de temps d'opérations
NFFT = 2^nextpow2(L);   # Prochaine puissance 2 de la longueur L
#Y = fft(y,NFFT)/L;     # Calcul la FFT et normalisation avec L
Y = fft(y,NFFT)/(L/8);  # Calcul la FFT et normalisation avec L
f = fs/2*linspace(0,1,NFFT/2+1);    # Plage de fréquence linéaire f (en Hz)
deltafreq = (fs/2)/(NFFT/2+1);      # Distance entre 2 fréquences

# Filtre pour conserver les pointes de fréquences.  La matrice Yfltrd 
# contient uniquement les valeurs de Y au-dessus de pct# de la valeur
# maximale(Ymax). Ces pointes sont ensuite stockée dans la matrice peaks.
pct = 0.2;                      # 20%
Ymax = 2*abs(max(Y));
Yfltrd = 2*abs(Y(1:NFFT/2+1));
Yfltrd(Yfltrd <= (pct*Ymax))=[0];

# code pour enlever les zéros d'une matrice issu du blogue stackoverflow 
# http://stackoverflow.com/questions/738438/removing-zeros-from-a-matrix-
# not-sparse
peaks_x = Yfltrd(Yfltrd ~=0);

# code pour chercher l'indice d'une matrice issu du blogue stackoverflow
# http://stackoverflow.com/questions/11572034/find-indices-of-elements-
#in-an-array-based-on-a-search-from-another-array
#Méthode 1 : dsearchn (prends 0.2125 sec)
peaks_y = dsearchn(Yfltrd,peaks_x);

peaks =[peaks_y peaks_x peaks_x];
#Méthode 2 : find
#peaks_y = find(Yfltrd > 0.2*Ymax);

# Table lookup to get notes out of the retained peaks
notes = peaks;
#Frequence = deltafreq * peaks de frequence 
notes(:,1)= deltafreq*peaks(:,1);
notes(:,3)= [132];
temp3 = 132;
taille_notes = size(notes);

# Pour chaque fréquence contenue dans le tableau notes,
# on vérifie quelle note correspond à la fréquence, on
# la stocke dans le tableau note et on l'affiche à l'écran
for i=1:taille_notes         
    temp1 = notes(i,1);
    for j=1:132             
         if (Eq_Notes_Freq(j,4) <= temp1 && temp1 <= Eq_Notes_Freq(j,5));
             notes(i,3)= Eq_Notes_Freq(j,1);
         end
    end
    temp2 = notes(i,3);             
    if temp2 ~= temp3;
        #disp(Notes_A_Num((temp2)+1,1));
        temp3 = temp2;
    end
    clear temp1;
end

# On reformate le tableau note en conservant les notes détectées
# à l'amplitude maximale (y ou note(x,2))

# 1-on compte le nbr de chiffres différents dans notes(:,3) - 132
nbr_notes_dtc = 0;
temp4=notes(:,3);
temp5=0;

for k=1:taille_notes    
    if (temp4(k) ~= 132 && temp4(k) ~= temp5);
        nbr_notes_dtc = nbr_notes_dtc + 1;
        temp5 = temp4(k);
    end
end

clear temp4;
clear temp5;

# 2-on crée un tableau de (nbr,3)
notes_dtc = zeros(nbr_notes_dtc,3);

# 3-on popule ce tableau avec max(notes(:,2)) pour notes(:,3) égaux
increment = 0;
temp6 = -1;

for l=1:taille_notes    
    if notes(l,3) ~= 132; 
        if temp6 == notes(l,3);
            if notes(l,2) > notes_dtc(increment,2);
                notes_dtc(increment,:)=notes(l,:);                
            end            
        else
            temp6 = notes(l,3);
            increment = increment + 1;
            notes_dtc(increment,:) = notes(l,:);            
        end    
    end
end

clear temp6;
clear increment;

# 4-on associe les notes détectées avec les tables de notes

# Algo : on cherche à associer la note fondamentale détectée à la table
# Notes_Et_Harm. Si les deux fondamentales sont les mêmes, on vérifie si
# les autres notes détectées sont des harmoniques de cette fondamentale.
# Pour chaque association (match), on gagne en précision. Si on a plus de
# deux associations ou autant de notes associées que détectées, on affiche
# la note fondamentale détectée et son taux de précision. Cet algorithme 
# fonctionne pour les notes seules, mais pas avec les accords.

disp('Note(s) détectée(s): (note)  (précision #)')

nbr_match = 0;          # Nombre d'associations d'une note à une fondamentale
nbr_match_total = 0;    # Nombre d'associations totales pour un ensemble de notes
indice_courant = 1;     # Indice courant du tableau notes détectées
notes_aff = zeros(nbr_notes_dtc,1);
notes_aff(:,1) = 132;
indice_aff = 1;
flag_aff = 0;

#Note simple
#for m=1:132
#    #if (notes_dtc(1,3) == Notes_Et_Harm(m,1) && nbr_match < 3);        
#    if (notes_dtc(1,3) == Notes_Et_Harm(m,1) && nbr_match < min(nbr_notes_dtc,3));
#        for o=1:min(nbr_notes_dtc,9)                       
#            if(notes_dtc(o,3) == Notes_Et_Harm(m,o));
#                nbr_match = nbr_match + 1;
#            end            
#        end
#        if (nbr_match == nbr_notes_dtc || nbr_match > 2);
#            disp([Notes_A_Num(m,1), nbr_match/nbr_notes_dtc*100, '% précision'])
#        end
#    end        
#end

# Algo : Toutes les notes détectées ont le potentiel d'être de la
# fondamentale au 4e harmonique des notes contenues dans la table
# Notes_Et_Harm. Si les deux harmoniques principaux sont les mêmes, on 
# vérifie si les autres notes détectées sont des harmoniques de ceux-ci.
# Pour chaque association (match), on gagne en précision. Si on a plus de
# deux associations ou autant de notes associées que détectées, on affiche
# la note détectée et son taux de précision.
        

#Accords
for m=1:4                           # Fondamentale au 4e harmonique
    for o=1:132                     # Pour les 131 notes et N/A
        for p=1:nbr_notes_dtc       # Pour les notes détectées           
            
            if (notes_dtc(p,3) == Notes_Et_Harm(o,m)) #&& nbr_match_total < 3);
                # Filtre 1 : une note déjà affichée est exclue
                for s=1:indice_aff  
                    if (Notes_Et_Harm(o,1) == notes_aff(s,1))
                        flag_aff = 1;
                    end
                end                
                if (flag_aff ==1);  
                    flag_aff=0;
                    break;
                end                
                # Filtre 2 : une note voisine à la dernière note détectée
                # avec au moins deux match est exclue
                if (indice_aff > 1 && (Notes_Et_Harm(o-1,1)== notes_aff(indice_aff-1,1) || Notes_Et_Harm(o+1,1)== notes_aff(indice_aff-1,1)) && nbr_match > 2);                    
                    break;                
                end
                # Filtre 3 : 10 notes sous la première note détectée est 
                # la note la plus basse permise.
                if (Notes_Et_Harm(o,1)< (notes_dtc(1,3)-10));                    
                    break;               
                end
                
                nbr_match = 0;          # Si la note détectée match la table
                for q=1:6               # On associe les 6 premiers harmoniques
                    #for r=indice_courant:nbr_notes_dtc
                    for r=1:nbr_notes_dtc
                        if(notes_dtc(r,3) == Notes_Et_Harm(o,q))
                            nbr_match = nbr_match + 1;
                            #q = q + 1;
                            #if(q > 6);
                            #    break;
                            #end
                            #r = r + 1;
                            #if(r > nbr_notes_dtc);
                            #    break;
                            #end
                            #indice_courant = r;
                        end
                    end
                end
                if (nbr_match == nbr_notes_dtc || nbr_match > 3);
                    notes_aff(indice_aff,1) = Notes_Et_Harm(o,1);
                    indice_aff = indice_aff + 1;
                    disp([Notes_A_Num(o,1), nbr_match/6*100])
                end                
                nbr_match_total = nbr_match_total + nbr_match;                
            end
            #Pas sur...
            #indice_aff = 1;
        end
        #Pas sur de ça : Chercher a briser la grosse boucle (1:132) si on a
        #matché plus de notes que de notes détectées
        if(nbr_match_total >= 2*nbr_notes_dtc);
            break;
        end
    end
    if(nbr_match_total >= 2*nbr_notes_dtc);
        break;
    end
end

indice_aff = 1;

#temp = notes(1,2);
#disp(Notes_A_Num(:,2));
#temp1 = 0;
#temp2 = 0;
#for i=1:size(notes)
#    temp1 = notes(i,2);
#    if temp1 ~= temp2;
#        disp(Notes_A_Num((temp1)+1,1));
#        temp2 = temp1;
#    end
#end

#Nettoyage variables

clear peaks;
clear peaks_x;
clear peaks_y;
clear notes;
clear notes_aff;
clear notes_dtc;
clear taille_notes;

delete(ai);
clear ai;

# Plot single-sided amplitude spectrum.
#f2k = f(1:2000);
subplot(1,2,1);plot(f(1:1000),2*abs(Y(1:1000)))
subplot(1,2,2);plot(f(1:1000),Yfltrd(1:1000))

#plot(f,2*abs(Y(1:NFFT/2+1)))
#plot(f,2*abs(Y(1:nbrpoints/2+1))) 
title('Single-Sided Amplitude Spectrum of y(t)')
xlabel('Frequency (Hz)')
ylabel('|Y(f)|')


 end
toc



#axis([0 2000, 0 max(abs(Y))])
#axis([0 length(Y)/2, 0 max(abs(Y))])


