<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Item_m extends CI_Model {


        public function get($id = null)
        {
                $this->db->from('p_item');
                if($id != null) {
                        $this->db->where('item_id', $id);
                }
                $query = $this->db->get();
                return $query;
        }

        /*public function add($post)
        {
            $params = [
                'name' => $post['item_name'],
                'phone' => $post['phone'],
                'address' => $post['addr'],
                'description' => empty($post['desc']) ? null : $post['desc'],
            ];
            $this->db->insert('item', $params);
        }*/

        public function add($post)
        {
            $params = [
                'barcode' => $post['barcode'],
                'name' => $post['product_name'],
                'category_id' => $post['category'],
                'unit_id' => $post['unit'],
                'price' => $post['price'],

            ];
            $this->db->insert('p_item', $params);

                /*$params['name'] = $post['item_name'];
                $params['phone'] = $post['phone'];
                $params['address'] = ($post['addr']);
                $params['description'] = $post['desc'] != "" ? $post['desc'] : null;
                $this->db->insert('item', $params); */
        }

        public function edit($post)
        {
            $params = [
                'barcode' => $post['barcode'],
                'name' => $post['product_name'],
                'category_id' => $post['category'],
                'unit_id' => $post['unit'],
                'price' => $post['price'],
                'updated' => date('Y-m-d H:i:s')
            ];
            $this->db->where('item_id', $post['id']);
            $this->db->update('p_item', $params);

        }

        public function del($id)
        {

                $this->db->where('item_id', $id);
                $this->db->delete('p_item');
        }
}
