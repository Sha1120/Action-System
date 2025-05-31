package lk.jiat.action.ejb;

import lk.jiat.action.model.Auction;
import lk.jiat.action.model.Bid;

import javax.annotation.Resource;
import javax.ejb.Stateless;
import javax.inject.Inject;
import javax.jms.JMSContext;
import javax.jms.Topic;
import java.util.concurrent.ConcurrentHashMap;

@Stateless
public class AuctionManagerBean {

    @Inject
    private BidManagerBean bidManager;

    @Resource(lookup = "java:/jms/auctionTopic")
    private Topic auctionTopic;

    @Inject
    private JMSContext jmsContext;

    // For demo purposes; In production use a database or a Singleton Bean
    private static final ConcurrentHashMap<Long, Auction> auctions = new ConcurrentHashMap<>();

    public void startAuction(Auction auction) {
        auctions.put(auction.getId(), auction);
    }

    public boolean placeBid(long auctionId, Bid bid) {
        Auction auction = auctions.get(auctionId);
        if (auction != null && bidManager.validateBid(auction, bid)) {
            auction.setCurrentBid(bid);
            broadcastBidUpdate(auction, bid);
            return true;
        }
        return false;
    }

    public void closeAuction(long auctionId) {
        Auction auction = auctions.get(auctionId);
        if (auction != null) auction.setClosed(true);
    }

    private void broadcastBidUpdate(Auction auction, Bid bid) {
        String message = "Auction " + auction.getId() +
                " new bid: " + bid.getAmount();
        jmsContext.createProducer().send(auctionTopic, message);
    }

    public Auction getAuction(long id) {
        return auctions.get(id);
    }
}
