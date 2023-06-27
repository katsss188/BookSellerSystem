package com.example.booksellersystem.service.imp;

import com.example.booksellersystem.mapper.LaccountMapper;
import com.example.booksellersystem.mapper.LbookMapper;
import com.example.booksellersystem.mapper.LpurchaseMapper;
import com.example.booksellersystem.pojo.Account;
import com.example.booksellersystem.pojo.Purchase;
import com.example.booksellersystem.pojo.PurchaseBooks;
import com.example.booksellersystem.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserServiceA implements UserService {
    @Autowired
    private LaccountMapper laccountMapper;
    @Autowired
    private LpurchaseMapper lpurchaseMapper;
    @Autowired
    private LbookMapper lbookMapper;

    @Override
    public int userChange(Account account) {
        laccountMapper.update(account);
        return 0;
    }
    @Override
    public List<?> getPurchase(String contact,int page ,int size){
       return lpurchaseMapper.getPurchase(contact, page - 1,size);
    }

    @Override
    public List<?> searchBook(String name,String author,String attribute,String type,String pname,String sname,int page ,int size){
        return lbookMapper.searchBook( name, author, attribute, type, pname,sname,page - 1, size);
    }

    @Override
    public Integer searchBookNum(String name, String author, String attribute, String type, String pname, String sname, int page, int size) {
        return lbookMapper.searchBookNum(name, author, attribute, type, pname, sname);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public int purchaseBook(List<PurchaseBooks> list) {


            list.stream().forEach(l->{
                lbookMapper.purchaseBook(l);
                lpurchaseMapper.setPurchase(l);
            });

        return 1;

    }

    /*
     * type:
     * 1.书名
     * 2.作者名
     * 3.出版社名
     * 4.供应商名
     * 5.价格
     * way:
     * 1.升序
     * 2.降序
     * */
    @Override
    public List<?> sort(int type, int way,int page,int size) {

        if(way == 1){
            switch (type){
                case 1:
                    return lbookMapper.sortNameA(page - 1,size);
                case 2:
                    return lbookMapper.sortAuthorA(page - 1,size);
                case 3:
                    return lbookMapper.sortPnameA(page - 1,size);
                case 4:
                    return lbookMapper.sortSnameA(page - 1,size);
                case 5:
                    return  lbookMapper.sortPriceA(page - 1,size);
                default:
                    return null;
            }
        }
            else if(way == 2){
                switch (type){
                    case 1:
                        return lbookMapper.sortNameD(page - 1,size);
                    case 2:
                        return lbookMapper.sortAuthorD(page - 1,size);
                    case 3:
                        return lbookMapper.sortPnameD(page - 1,size);
                    case 4:
                        return lbookMapper.sortSnameD(page - 1,size);
                    case 5:
                        return  lbookMapper.sortPriceD(page - 1,size);
                    default:
                        return null;
                }
        }


        return null;
    }

    @Override
    public Integer getPurchaseNum(String contact) {
        return lpurchaseMapper.getPurchaseNum(contact);
    }


}
