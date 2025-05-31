package lk.jiat.action.ejb;

import lk.jiat.action.model.Auction;

import javax.ejb.Singleton;
import java.util.concurrent.ConcurrentHashMap;

@Singleton
public class AuctionSingletonBean {

    private ConcurrentHashMap<Long, Auction> activeAuctions = new ConcurrentHashMap<>();

    public void addAuction(Auction auction) {
        activeAuctions.put(auction.getId(), auction);
    }

    public Auction getAuction(Long id) {
        return activeAuctions.get(id);
    }

    public void removeAuction(Long id) {
        activeAuctions.remove(id);
    }

    public ConcurrentHashMap<Long, Auction> getAllAuctions() {
        return activeAuctions;
    }
}
