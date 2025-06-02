package lk.jiat.action.bean;

import java.io.Serializable;
import java.time.Duration;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class Auction implements Serializable {
    private int id;
    private String title;
    private String imageUrl;
    private double currentBid;
    private String description;
    private LocalDateTime startDate;
    private LocalDateTime endDate;

    private List<AuctionBid> bidHistory = new ArrayList<>();

    public Auction() {}

    public Auction(int id, String title, String imageUrl, double currentBid, String endsIn, String description,LocalDateTime startDate, LocalDateTime endDate) {
        this.id = id;
        this.title = title;
        this.imageUrl = imageUrl;
        this.currentBid = currentBid;
        this.description = description;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }
    public String getImageUrl() { return imageUrl; }
    public void setImageUrl(String imageUrl) { this.imageUrl = imageUrl; }
    public double getCurrentBid() { return currentBid; }
    public void setCurrentBid(double currentBid) { this.currentBid = currentBid; }
    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
    public LocalDateTime getStartDate() { return startDate; }
    public void setStartDate(LocalDateTime startDate) { this.startDate = startDate; }
    public LocalDateTime getEndDate() { return endDate; }
    public void setEndDate(LocalDateTime endDate) { this.endDate = endDate; }


    public String getTimeRemaining() {
        Duration duration = Duration.between(LocalDateTime.now(), endDate);
        long hours = duration.toHours();
        long minutes = duration.toMinutes() % 60;
        long seconds = duration.getSeconds() % 60;
        if (duration.isNegative()) {
            return "Auction ended";
        }
        return String.format("%02d:%02d:%02d", hours, minutes, seconds);
    }

    public List<AuctionBid> getBidHistory() {
        return bidHistory;
    }

    public void setBidHistory(List<AuctionBid> bidHistory) {
        this.bidHistory = bidHistory;
    }

    public void addBidToHistory(AuctionBid bid) {
        bidHistory.add(0, bid); // add to top (latest first)
    }
}