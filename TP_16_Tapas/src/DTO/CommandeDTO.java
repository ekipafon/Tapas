package DTO;

public class CommandeDTO 
{
    int idCommande;
    TIME heure;
    int idGroupe;

    public int getIdCommande() {
        return idCommande;
    }

    public void setIdCommande(int idCommande) {
        this.idCommande = idCommande;
    }

    public TIME getHeure() {
        return heure;
    }

    public void setHeure(TIME heure) {
        this.heure = heure;
    }

    public int getIdGroupe() {
        return idGroupe;
    }

    public void setIdGroupe(int idGroupe) {
        this.idGroupe = idGroupe;
    }
    
}
